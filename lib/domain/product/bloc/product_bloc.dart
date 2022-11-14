import 'dart:async';
import 'dart:ffi';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/brand_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/product_type_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:translit/translit.dart';
import 'package:crypto/crypto.dart';
part 'product_events.dart';
part 'product_states.dart';
part '../../../data/repository/product_repository.dart';
part '../../../data/api/service/product_provider.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState.initial()) {
    on<ProductEvent>((event, emit) async {
      await event.maybeWhen(
          orElse: () => null,
          loadProducts:
              ((idOrganization, productTypes, searchPath, searchBrand) async {
            emit(const ProductState.loading(false));
            var loadedProducts = await ProductRepository.loadProductModels(
              idCompany: idOrganization,
              brandName: searchBrand?.name,
              searchString: searchPath,
              productType:
                  productTypes != null ? productTypes.first.label : null,
              productTypes: productTypes != null && productTypes.length > 1
                  ? productTypes[1].label
                  : null,
              productTypet: productTypes != null && productTypes.length > 2
                  ? productTypes[2].label
                  : null,
            );
            emit(ProductState.loaded(loadedProducts));
          }),
          addNewProduct: (brandName,
              album,
              productDesc,
              productName,
              productPrice,
              quantity,
              productCategory,
              productCategoryS,
              productCategoryT,
              oldProductName,
              idProduct) async {
            try {
              emit(const ProductState.loading(false));

              var loadedProduct = await ProductRepository.addNewProduct(
                  oldProductName: oldProductName,
                  idProduct: idProduct,
                  album: album,
                  brandName: brandName,
                  productCategory: productCategory,
                  productDesc: productDesc,
                  productName: productName,
                  productPrice: productPrice,
                  quantity: quantity,
                  productCategoryS: productCategoryS,
                  productCategoryT: productCategoryT);
              emit(ProductState.productAdded(loadedProduct));
            } catch (e) {
              emit(ProductState.errored(e.toString()));
            }
          },
          addNewBrand: (title, description, image) async {
            try {
              emit(const ProductState.loading(false));
              var loadedBrand = await ProductRepository.addNewBrand(
                  title, description, image);
              emit(ProductState.brandAdded(loadedBrand));
            } catch (e) {
              emit(ProductState.errored(e.toString()));
            }
          },
          loadBrands: (searchText) async {
            var loadedBrands =
                await ProductRepository.searchBrandByName(searchText);
            emit(ProductState.brandsLoaded(loadedBrands));
          },
          addNewCategories: (category) async {
            emit(ProductState.loading(true));
            List<ProductTypeModel> categoriesToReturn = [];
            for (var element in category) {
              categoriesToReturn
                  .add(await ProductRepository.addNewProductCategory(element));
            }

            emit(ProductState.categoriesAdded(categoriesToReturn));
          },
        
          loadCategories: (searchText) async {
            var loadedCategories =
                await ProductRepository.searchCategoryByText(searchText);
            emit(ProductState.categoriesLoaded(loadedCategories));
          });
    });
  }
}

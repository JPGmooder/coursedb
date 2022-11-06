import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/product_type_model.dart';
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

part of 'product_bloc.dart';

@freezed
abstract class ProductState implements _$ProductState {
  const factory ProductState.initial() = _$ProductInitialState;
  const factory ProductState.errored({required String message, String? hint}) = _$ProductErroredState;
  const factory ProductState.loading(bool isMass) = _$ProductLoadingState;
  const factory ProductState.productAdded(ProductModel product) =
      _$ProductAddedState;
  const factory ProductState.loaded(List<ProductModel> productModel) =
      _$ProductsLoadedState;

  const factory ProductState.categoriesLoaded(
      List<ProductTypeModel> categories) = _$ProductCategoriesLoadedState;
  const factory ProductState.brandsLoaded(List<BrandModel> brands) =
      _$ProductBrandsLoadedState;
  const factory ProductState.brandAdded(BrandModel addedBrand) =
      _$ProductBrandAddedState;
  const factory ProductState.categoriesAdded(
      List<ProductTypeModel> categories) = _$ProductCategoriesAddedState;
}

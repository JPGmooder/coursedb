part of 'product_bloc.dart';
@freezed
abstract class ProductEvent implements _$ProductEvent {
  const factory ProductEvent.loadCategories(String searchText) =
      _$ProductLoadCategoriesEvent;
  const factory ProductEvent.addNewCategories(List<ProductTypeModel> categories) =
      _$ProductAddNewCategoriesEvent;
      
  
}

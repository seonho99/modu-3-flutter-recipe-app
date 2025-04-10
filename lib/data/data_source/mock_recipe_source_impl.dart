import 'dart:convert';

import 'package:recipe_app/data/data_source/recipe_data_source.dart';

import '../dto/recipe_dto.dart';

class MockRecipeDataSourceImpl implements RecipeDataSource {
  final mockData = '''
  {
  "profiles": [
    {
      "id": 1,
      "name": "Chef John",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Lagos, Nigeria"
    },
    {
      "id": 2,
      "name": "Mark Kelvin",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Abuja, Nigeria"
    },
    {
      "id": 3,
      "name": "Spicy Nelly",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Ibadan, Nigeria"
    },
    {
      "id": 4,
      "name": "Kim Dahee",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Seoul, South Korea"
    },
    {
      "id": 5,
      "name": "Alice Johnson",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "New York, USA"
    },
    {
      "id": 6,
      "name": "Gordon Ramsay",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "London, UK"
    },
    {
      "id": 7,
      "name": "Mario Batali",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Rome, Italy"
    },
    {
      "id": 8,
      "name": "Jiro Ono",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Tokyo, Japan"
    },
    {
      "id": 9,
      "name": "Julia Child",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "Paris, France"
    },
    {
      "id": 10,
      "name": "Paul Hollywood",
      "image": "https://cdn.pixabay.com/photo/2022/10/19/01/02/woman-7531315_1280.png",
      "address": "London, UK"
    }
  ]
}
  ''';

  @override
  Future<List<RecipeDto>> getRecipeDto() async {
    List<dynamic> mockString = await jsonDecode(mockData);
    List<Map<String,dynamic>> jsonData = mockString.map((e) => e as Map<String, dynamic>).toList();
    return jsonData.map((e) => RecipeDto.fromJson(e)).toList();
  }
}

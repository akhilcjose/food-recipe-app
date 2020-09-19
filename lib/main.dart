import 'package:flutter/material.dart';
import 'package:navigation/screens/favorite_screen.dart';
import './screens/meal_detail_screen.dart';
import 'package:navigation/screens/tab_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodMazza',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.pink,
        canvasColor: Color.fromRGBO(255, 254, 229, 10),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          title: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      //home: CategoriesScreen(),
      
      routes: {
        '/': (ctx)=>TabsScreen(),
        CategoryMealsScreen.routeName: (ctx)=>CategoryMealsScreen(),
        MealDetailScreen.routeName:(ctx)=>MealDetailScreen(),
        FavoriteScreen.routename:(ctx)=>FavoriteScreen(),
      },
     /* onGenerateRoute: (settings){
        print (settings.arguments);
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
      },*/
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx)=>CategoriesScreen());
      },
    );
  }
}

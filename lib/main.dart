import 'my_flutter_app_icons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
	runApp(MyApp());
}
class MyApp extends StatelessWidget {
	
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Paris App',
			debugShowCheckedModeBanner: false,
			theme: ThemeData(
				brightness: Brightness.dark
			),
			home: MyHomePage(),
		);
	}
}

class MyHomePage extends StatefulWidget {
	MyHomePage({Key key}) : super(key: key);
	@override
	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Stack(
				children: <Widget>[
					Positioned(
						child: DropdownButtonHideUnderline(
							child: DropdownButton<String>(
								icon: Icon(Icons.keyboard_arrow_down),
								iconSize: 40,
								iconEnabledColor: Colors.white,
								onChanged: popupButtonSelected,
								value: "Child 1",
								style: TextStyle(fontSize:35.0,
									color: Colors.white,
									fontWeight: FontWeight.bold,
								),
								items: <DropdownMenuItem<String>>[
									DropdownMenuItem<String>(value: "Child 1",
										child: Text("Paris")),
									DropdownMenuItem<String>(value: "Child 2",
										child: Text("Ioa")),
									DropdownMenuItem<String>(value: "Child 3",
										child: Text("Tokyo")),
								],
							),
						),
						left: 30,
						top: 45,
					),
					Positioned(
						right: 110,
						top: 45,
						child: CircleAvatar(
							backgroundColor: Colors.grey[800],
							radius: 25,
							child: IconButton(
								icon: Icon(Icons.search),
								onPressed: (){},
								iconSize: 25,
								color: Colors.white,
							),
						),
					),
					Positioned(
						right: 50,
						top: 45,
						child: CircleAvatar(
							backgroundColor: Colors.grey[800],
							radius: 25,
							child: IconButton(
								icon: Icon(Icons.settings),
								onPressed: (){},
								iconSize: 25,
								color: Colors.white,
							),
						),
					),
					Positioned(
						left: 30,
						top: 100,
						child: SingleChildScrollView(
							
							scrollDirection: Axis.horizontal,
							child: Row(
								children: <Widget>[
									Card(
										margin: EdgeInsets.all(10),
										shape: StadiumBorder(),
										child: Column(
											children: <Widget>[
												CircleAvatar(
													child: IconButton(
														icon: Icon(Icons.wb_sunny),
														iconSize: 30,
														color: Colors.white,
														onPressed: (){},
													),
													radius: 35,
													backgroundColor: Colors.grey[800],
												),
												SizedBox(height: 20,),
												Text("All", style: TextStyle(fontSize: 15),),
												SizedBox(height: 20,),
											],
										),
									),
									Card(
										color: Colors.deepPurple,
										margin: EdgeInsets.all(10),
										shape: StadiumBorder(),
										child: Column(
											children: <Widget>[
												CircleAvatar(
													child: IconButton(
														icon: Icon(Icons.fastfood),
														iconSize: 30,
														color: Colors.white,
														onPressed: (){},
													),
													radius: 35,
													backgroundColor: Colors.deepPurple[400],
												),
												SizedBox(height: 20,),
												Text("Food", style: TextStyle(fontSize: 15),),
												SizedBox(height: 20,),
											],
										),
									),
									Card(
										margin: EdgeInsets.all(10),
										shape: StadiumBorder(),
										child: Column(
											children: <Widget>[
												CircleAvatar(
													child: IconButton(
														icon: Icon(Icons.live_tv),
														iconSize: 30,
														color: Colors.white,
														onPressed: (){},
													),
													radius: 35,
													backgroundColor: Colors.grey[800],
												),
												SizedBox(height: 20,),
												Text("Sports", style: TextStyle(fontSize: 15),),
												SizedBox(height: 20,),
											],
										),
									),
									Card(
										margin: EdgeInsets.all(10),
										shape: StadiumBorder(),
										child: Column(
											children: <Widget>[
												CircleAvatar(
													child: IconButton(
														icon: Icon(Icons.music_note),
														iconSize: 30,
														color: Colors.white,
														onPressed: (){},
													),
													radius: 35,
													backgroundColor: Colors.grey[800],
												),
												SizedBox(height: 20,),
												Text("Music", style: TextStyle(fontSize: 15),),
												SizedBox(height: 20,),
											],
										),
									),
								],
							),
						),
					),
					Positioned(
						left: 30,
						bottom: 400,
						child: Text("Popular Events", style: TextStyle(fontSize: 24),),
					),
					Positioned(
						left: 30,
						bottom: 170,
						child: GestureDetector(
							child: Card(
								shape: RoundedRectangleBorder(
									borderRadius: BorderRadius.circular(20),
								),
								semanticContainer: true,
								child: Column(
									children: <Widget>[
										ClipRRect(
											child: Align(
												child: Image.asset("assets/img/louvre_paris.jpg", fit: BoxFit.cover, height: 220, width: 220,),
											),
											borderRadius: BorderRadius.circular(20),
										),
										SizedBox(width: 50),
										Align(
											child: FloatingActionButton(
												backgroundColor: Colors.grey,
												onPressed: (){},
												child: IconButton(
													icon: Icon(Icons.favorite_border),
													onPressed: (){},
													color: Colors.white,
												),
											),
											heightFactor: 0,
										),
									],
								),
							),
							onTap: (){
								showModalBottomSheet(
									context: context,
									builder: (BuildContext bc){
										return Column(
											children: <Widget>[
												ClipRRect(
													borderRadius: BorderRadius.circular(20),
													child: Image.asset("assets/img/louvre_paris.jpg",),
												),
//						ClipRRect(
//							borderRadius: BorderRadius.circular(20),
//							child: Card(
//								color: Colors.grey[700],
//								child: Divider(
//									color: Colors.white,
//									indent: 100,
//									endIndent: 100,
//									thickness: 05,
//								),
//							),
//						),
												ClipRRect(
													child: Card(
														child: Column(
															children: <Widget>[
//									  ListTile(
//										  leading: Icon(Icons.person),
//										  title: Text("Isabelle Peattie", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//									  ),
																ListTile(
																	leading: Text("FRI, DEC 19TH - MON, DEC 27TH", style: TextStyle(color: Colors.deepPurpleAccent),),
																),
																ListTile(
																	title: Text("Nocturnal and Unusual Visit", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
																	trailing: Icon(Icons.favorite),
																),
																ButtonTheme(
																	child: RaisedButton(
																		onPressed: (){},
																		elevation: 10,
																		color: Colors.deepPurpleAccent,
																		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
																		child: Text("Get Ticket", style: TextStyle(fontSize: 15, color: Colors.white),),
																	),
																	minWidth: 400,
																),
															],
														),
														color: Colors.grey[800],
													),
													borderRadius: BorderRadius.circular(20),
												),
											],
										);
									},
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.circular(20),
									)
								);
							},
						),
					),
					Positioned(
						left: 260,
						bottom: 170,
						child: GestureDetector(
							child: Card(
								shape: RoundedRectangleBorder(
									borderRadius: BorderRadius.circular(20),
								),
								semanticContainer: true,
								child: Column(
									children: <Widget>[
										ClipRRect(
											child: Align(
												child: Image.asset("assets/img/flowers.jpg", fit: BoxFit.cover, height: 220, width: 220,),
											),
											borderRadius: BorderRadius.circular(20),
										),
										SizedBox(width: 50),
										Align(
											child: FloatingActionButton(
												backgroundColor: Colors.grey,
												onPressed: (){},
												child: IconButton(
													icon: Icon(Icons.favorite_border),
													onPressed: (){},
													color: Colors.white,
												),
											),
											heightFactor: 0,
										),
									],
								),
							),
							onTap: (){
								showModalBottomSheet(
									context: context,
									builder: (BuildContext bc){
										return Column(
											children: <Widget>[
												ClipRRect(
													borderRadius: BorderRadius.circular(20),
													child: Image.asset("assets/img/flowers.jpg",),
												),
//						ClipRRect(
//							borderRadius: BorderRadius.circular(20),
//							child: Card(
//								color: Colors.grey[700],
//								child: Divider(
//									color: Colors.white,
//									indent: 100,
//									endIndent: 100,
//									thickness: 05,
//								),
//							),
//						),
												ClipRRect(
													child: Card(
														child: Column(
															children: <Widget>[
//									  ListTile(
//										  leading: Icon(Icons.person),
//										  title: Text("Isabelle Peattie", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
//									  ),
																ListTile(
																	leading: Text("FRI, DEC 19TH - MON, DEC 27TH", style: TextStyle(color: Colors.deepPurpleAccent),),
																),
																ListTile(
																	title: Text("Nocturnal and Unusual Visit", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
																	trailing: Icon(Icons.favorite),
																),
																ButtonTheme(
																	child: RaisedButton(
																		onPressed: (){},
																		elevation: 10,
																		color: Colors.deepPurpleAccent,
																		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
																		child: Text("Get Ticket", style: TextStyle(fontSize: 15, color: Colors.white),),
																	),
																	minWidth: 400,
																),
															],
														),
														color: Colors.grey[800],
													),
													borderRadius: BorderRadius.circular(20),
												),
											],
										);
									},
									shape: RoundedRectangleBorder(
										borderRadius: BorderRadius.circular(20),
									)
								);
							},
						),
					),
				],
			),
			
			bottomNavigationBar: BottomNavigationBar(
				type: BottomNavigationBarType.fixed,
				currentIndex: 1,
				items: [
					BottomNavigationBarItem(
						icon: Icon(Icons.supervisor_account),
						title: Text('Account'),
					),
					
					BottomNavigationBarItem(
						icon: Icon(Icons.calendar_today),
						title: Text('Events'),
					),
					
					BottomNavigationBarItem(
						icon: Icon(Icons.dashboard),
						title: Text('Dashboard'),
					)
				]
			),
		);
	}
	void popupButtonSelected(String value) {}
	
}
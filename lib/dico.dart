const List<Map<String, dynamic>> questionsData = [
  {
    "question": "Qu'est-ce que Flutter ?",
    "options": [
      "Un langage de programmation",
      "Un framework de développement mobile",
      "Un IDE pour Android",
      "Une bibliothèque Python",
      "Un outil de design UI"
    ],
    "correct_index": 1
  },
  {
    "question": "Quel langage est utilisé par Flutter ?",
    "options": ["Java", "Kotlin", "Swift", "Dart", "C++"],
    "correct_index": 3
  },
  {
    "question": "Qui développe Flutter ?",
    "options": ["Facebook", "Apple", "Microsoft", "Google", "Amazon"],
    "correct_index": 3
  },
  {
    "question": "Quelle commande permet de créer un projet Flutter ?",
    "options": [
      "flutter create my_app",
      "flutter new my_app",
      "flutter start my_app",
      "flutter init my_app",
      "dart create my_app"
    ],
    "correct_index": 0
  },
  {
    "question": "Quel fichier contient les dépendances d’un projet Flutter ?",
    "options": ["main.dart", "pubspec.yaml", "config.json", "flutter.yaml", "dependencies.xml"],
    "correct_index": 1
  },
  {
    "question": "Quel widget est utilisé pour afficher du texte ?",
    "options": ["Text()", "Label()", "Paragraph()", "Typography()", "DisplayText()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une image ?",
    "options": ["Image()", "Picture()", "Photo()", "Img()", "Bitmap()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour créer un bouton ?",
    "options": ["Button()", "FlatButton()", "ElevatedButton()", "Clickable()", "Pressable()"],
    "correct_index": 2
  },
  {
    "question": "Quelle méthode est utilisée pour mettre à jour un StatefulWidget ?",
    "options": ["updateState()", "refresh()", "setState()", "rebuild()", "reload()"],
    "correct_index": 2
  },
  {
    "question": "Quelle est la différence entre StatelessWidget et StatefulWidget ?",
    "options": [
      "StatelessWidget ne peut pas changer son état après création",
      "StatefulWidget ne peut pas stocker d’état",
      "StatelessWidget est plus rapide que StatefulWidget",
      "StatefulWidget ne peut pas utiliser setState()",
      "StatelessWidget est utilisé pour les animations"
    ],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de créer une colonne verticale ?",
    "options": ["Row()", "Stack()", "Column()", "ListView()", "Flex()"],
    "correct_index": 2
  },
  {
    "question": "Quel widget est utilisé pour gérer l'alignement des éléments ?",
    "options": ["Align()", "Positioned()", "Center()", "Padding()", "Container()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une ligne horizontale ?",
    "options": ["Column()", "Row()", "Divider()", "ListView()", "Flex()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget permet d'appliquer une marge autour d'un élément ?",
    "options": ["Padding()", "Margin()", "Container()", "Align()", "Spacer()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une liste avec défilement ?",
    "options": ["ListView()", "Column()", "Stack()", "GridView()", "Row()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour créer une case à cocher ?",
    "options": ["Switch()", "Checkbox()", "Radio()", "Checkmark()", "Toggle()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget est utilisé pour afficher une boîte de dialogue ?",
    "options": ["Dialog()", "AlertDialog()", "Popup()", "Modal()", "SnackBar()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget est utilisé pour appliquer des bordures à un élément ?",
    "options": ["Container()", "BoxDecoration()", "Padding()", "ClipRRect()", "Border()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget permet d'ajouter un fond coloré à un élément ?",
    "options": ["Container()", "BoxDecoration()", "ColoredBox()", "Background()", "Material()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher un champ de saisie avec un clavier ?",
    "options": ["TextField()", "EditableText()", "InputField()", "SearchBox()", "TextBox()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour créer un champ de saisie pour un mot de passe ?",
    "options": ["TextField()", "PasswordField()", "SecureTextField()", "ObscureText()", "EditableText()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une barre de progression ?",
    "options": ["LinearProgressIndicator()", "CircularProgressIndicator()", "ProgressBar()", "LoadingBar()", "ActivityIndicator()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget est utilisé pour afficher un bouton avec un effet d'élévation ?",
    "options": ["FlatButton()", "RaisedButton()", "ElevatedButton()", "OutlineButton()", "TextButton()"],
    "correct_index": 2
  },
  {
    "question": "Quel widget permet de gérer l'état d'un bouton activé/désactivé ?",
    "options": ["StatefulWidget()", "Checkbox()", "Switch()", "TextButton()", "Button()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour un champ de saisie avec une icône à l'intérieur ?",
    "options": ["TextField()", "SearchField()", "IconField()", "InputField()", "FormField()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de créer une zone de texte multilignes ?",
    "options": ["Text()", "TextField()", "TextArea()", "EditableText()", "MultilineText()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget permet d'appliquer un effet de dégradé sur un élément ?",
    "options": ["GradientBox()", "BoxDecoration()", "LinearGradient()", "Container()", "ShaderMask()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget permet d'ajouter une image à un bouton ?",
    "options": ["IconButton()", "FlatButton()", "ElevatedButton()", "TextButton()", "ImageButton()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de donner une couleur à l'arrière-plan d'un élément ?",
    "options": ["Container()", "BoxDecoration()", "ColorBox()", "BackgroundColor()", "Paint()"],
    "correct_index": 3
  },
  {
    "question": "Quel widget est utilisé pour afficher une icône ?",
    "options": ["Icon()", "Image()", "Symbol()", "Pic()", "IconButton()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de naviguer vers un nouvel écran ?",
    "options": [
      "Navigator.moveTo(NewScreen());",
      "Navigator.open(NewScreen());",
      "Navigate.to(NewScreen());",
      "Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()));",
      "Navigator.switchTo(NewScreen());"
    ],
    "correct_index": 3
  },
  {
    "question": "Quel widget est utilisé pour revenir à l'écran précédent ?",
    "options": [

      "Navigator.back(context);",
      "Navigator.pop(context);",
      "Navigator.close(context);",
      "Navigator.exit(context);",
      "Navigator.cancel(context);"
    ],
    "correct_index": 1
  },
  {
    "question": "Quel widget permet de faire une navigation entre les onglets ?",
    "options": ["TabBar()", "Navigator()", "Drawer()", "BottomNavigationBar()", "PageView()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour définir une route dans Flutter ?",
    "options": ["MaterialPageRoute()", "RouteBuilder()", "NavigatorRoute()", "PageRouteBuilder()", "RouteWidget()"],
    "correct_index": 0
  },
  {
    "question": "Quelle méthode permet de fermer un écran modale dans Flutter ?",
    "options": [

      "Navigator.close(context);",
      "Navigator.remove(context);",
      "Navigator.pop(context);",
      "Navigator.dismiss(context);",
      "Navigator.exit(context);"
    ],
    "correct_index": 2
  },
  {
    "question": "Quel widget est utilisé pour afficher un menu contextuel ?",
    "options": ["PopupMenuButton()", "ContextMenu()", "Popup()", "MenuButton()", "DropdownButton()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une barre de navigation en bas de l'écran ?",
    "options": [ "TabBar()", "Drawer()", "BottomNavigationBar()","BottomSheet()", "FloatingActionButton()"],
    "correct_index": 2
  },
  {
    "question": "Comment ajouter une nouvelle page à la pile de navigation ?",
    "options": [
      "Navigator.push(context, MaterialPageRoute(builder: (context) => NewScreen()));",
      "Navigator.add(context, NewScreen());",
      "Navigator.insert(context, NewScreen());",
      "Navigator.append(context, NewScreen());",
      "Navigator.appendPage(context, NewScreen());"
    ],
    "correct_index": 0
  },
  {
    "question": "Comment gérer la navigation avec un Drawer ?",
    "options": ["Drawer()", "DrawerNavigator()", "DrawerButton()", "NavigationDrawer()", "SideMenu()"],
    "correct_index": 0
  },
  {
    "question": "Quelle méthode permet de revenir à l'écran précédent avec des arguments ?",
    "options": [

      "Navigator.back(context, result);",
      "Navigator.exit(context, result);",
      "Navigator.close(context, result);",
      "Navigator.pop(context, result);",
      "Navigator.remove(context, result);"
    ],
    "correct_index": 3
  },
  {
    "question": "Quel widget est utilisé pour afficher une barre de recherche ?",
    "options": ["SearchBar()", "AppBar()", "SearchField()", "TextField()", "SliverAppBar()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour créer un menu déroulant ?",
    "options": ["DropdownButton()", "PopupMenuButton()", "SelectMenu()", "PopUpButton()", "MenuDropdown()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de créer une barre d'outils avec des actions ?",
    "options": ["AppBar()", "ToolBar()", "ActionBar()", "TopBar()", "NavigationBar()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de basculer entre des écrans dans une application à onglets ?",
    "options": ["TabBarView()", "PageView()", "Stack()", "SwitchTab()", "GridView()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de créer un bouton flottant ?",
    "options": ["FloatingActionButton()", "CircularButton()", "ActionButton()", "FAB()", "RoundButton()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher des notifications sur l'écran ?",
    "options": ["Snackbar()", "Notification()", "Toast()", "AlertDialog()", "Banner()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet de définir une page de lancement dans l'application ?",
    "options": ["SplashScreen()", "WelcomePage()", "IntroPage()", "LaunchPage()", "InitialScreen()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une fenêtre modale ?",
    "options": ["Dialog()", "AlertDialog()", "Popup()", "ModalWindow()", "ModalDialog()"],
    "correct_index": 1
  },
  {
    "question": "Quel widget permet d'afficher une liste déroulante ?",
    "options": ["DropdownButton()", "DropMenu()", "MenuList()", "PopupList()", "DropDownMenu()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget est utilisé pour afficher une barre d'outils en haut de l'écran ?",
    "options": ["AppBar()", "ToolBar()", "TopBar()", "NavigationBar()", "HeaderBar()"],
    "correct_index": 0
  },
  {
    "question": "Quel widget permet d'ajouter une animation dans l'application ?",
    "options": ["AnimatedContainer()", "AnimatedWidget()", "AnimationBuilder()", "TweenAnimation()", "AnimatedSwitcher()"],
    "correct_index": 0
  }
];





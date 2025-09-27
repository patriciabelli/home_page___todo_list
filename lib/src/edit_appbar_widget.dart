import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _primaryBg = Colors.black;
const _primaryColor = Colors.white;

class EditAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const EditAppbarWidget({
    super.key,
    required this.closeAction,
    required this.saveAction,
    required this.title,
  });


  final void Function() closeAction;
  final void Function() saveAction;
  final String title;


  @override
  Widget build(BuildContext context) {
    return Material(
      color: _primaryBg,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: _primaryBg,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        child: SafeArea(child: Padding(padding: EdgeInsets.only(bottom: 8, top: 4), 
        child: Row(
           crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing: 12,
                children: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: closeAction,
                    color: _primaryColor,
                  ),
        
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(fontSize: 21, color: _primaryColor),
                      ),
                      PopupMenuButton(
                        onSelected: (value) {},
                        itemBuilder:
                            (context) => [
                              PopupMenuItem(value: 1, child: Text('AI Mode')),
                              PopupMenuItem(value: 2, child: Text('Show Tools')),
                            ],
                        icon: Icon(
                          Icons.arrow_drop_down_circle,
                          color: _primaryColor,
                        ),
                      ),
                    ],
                  ),
        
                  IconButton(
                    icon: Icon(Icons.check),
                    onPressed: saveAction,
                    color: _primaryColor,
                  ),
                ],
              ),
            ),
          ),
      ),
      );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
import 'package:todo_app/export.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool completed;
  Function(bool?)? onchanged;
  Function() deleteFunction;

  ToDoTile({
    super.key,
    required this.taskName,
    required this.completed,
    required this.onchanged,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: completed,
                      onChanged: onchanged,
                    activeColor: Colors.black,
                  ),
              Text(
                  taskName,style: TextStyle(
                decoration: completed ? TextDecoration.lineThrough : TextDecoration.none,
                fontSize: MediaQuery.of(context).size.width/15
              )
              ),
            ],
          ),
              IconButton(
                  onPressed: deleteFunction,
                  icon: Icon(Icons.delete,
                    size: MediaQuery.of(context).size.width/10,
                    color: Colors.red,
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

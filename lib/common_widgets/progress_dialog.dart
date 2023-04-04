import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class ProgressDialog extends ConsumerStatefulWidget {
  final ProgressDialogType type;

  const ProgressDialog(this.type, {Key? key}) : super(key: key);

  @override
  ConsumerState<ProgressDialog> createState() => _ProgressDialogState();
}

enum ProgressDialogType { loading, success, error }

class _ProgressDialogState extends ConsumerState<ProgressDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black.withOpacity(0.7),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(18))
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.width / 2,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Visibility(
                  visible: widget.type == ProgressDialogType.loading,
                  child: const CircularProgressIndicator(
                    color: Colors.white,

                  )),
              Visibility(
                  visible: widget.type != ProgressDialogType.loading,
                  child: Image.asset(widget.type == ProgressDialogType.success
                      ? 'assets/images/dialog_success.png'
                      : 'assets/images/dialog_error.png')),
              Visibility(
                  visible: widget.type != ProgressDialogType.loading,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                    child: Text(widget.type == ProgressDialogType.success
                        ? 'Save OK'
                        : 'Save Fail', style: const TextStyle(color: Colors.white, fontSize: 20),),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

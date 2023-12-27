import 'package:flutter/material.dart';
import 'package:my_flutter_app/app/admin/pages/stores/features/admin_edit_store_feature.dart';
import 'package:my_flutter_app/common/helper/alert_dialog_helper.dart';
import 'package:my_flutter_app/common/helper/bottom_sheet_helper.dart';

class AdminStoreItemFeature extends StatelessWidget {
  const AdminStoreItemFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handelOnEditButtonTap() {
      BottomSheetHelper.show(
        context,
        title: "Edit Store",
        height: 9 / 10,
        child: const AdminEditStoreFeature(),
      );
    }

    void handelOnDeleteButtonTap() {
      AlertDialogHelper.show(
        context,
        title: "Delete Store",
        middleText: "Are you sure you want to delete this store?",
        confirmText: "Delete",
        confirmTextColor: Theme.of(context).colorScheme.error,
      );
    }

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
            "https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png",
          ),
        ),
        title: Text(
          "Store Name",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: handelOnEditButtonTap,
              icon: const Icon(Icons.edit),
              color: Theme.of(context).primaryColor,
            ),
            IconButton(
              onPressed: handelOnDeleteButtonTap,
              icon: const Icon(Icons.delete),
              color: Theme.of(context).colorScheme.error,
            ),
          ],
        ),
      ),
    );
  }
}

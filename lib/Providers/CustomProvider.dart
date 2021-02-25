import "package:flutter/foundation.dart";

abstract class CustomProvider with ChangeNotifier, DiagnosticableTreeMixin {
    void exposeProperties(DiagnosticPropertiesBuilder properties) {}

    @override
    void debugFillProperties(DiagnosticPropertiesBuilder properties) {
        if (!kReleaseMode) {
            super.debugFillProperties(properties);

            exposeProperties(properties);
        }
    }
}

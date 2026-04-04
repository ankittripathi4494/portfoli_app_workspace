/// Global exports - Single point of entry for all global utilities, widgets, and routing.
/// Organize imports by category for better maintainability and discoverability.
library;

/// Utilities & Helpers
export 'global/utils/helpers.extensions.dart' show StringEnhancer, DateTimeEnhancer;
export 'global/utils/resource.helper.dart' show ResourceHelper;

/// Widgets
export 'global/widgets/text.widget.dart' show TextWidget;
export 'global/widgets/asset_image.widget.dart' show AssetImageWidget;

/// Global Screens
export 'global/screens/network_error.screen.dart' show NetworkErrorScreen;

/// Routing
export 'global/router/routes/app.routes.dart' show router;
export 'global/router/routes/constants.routes.dart' show ConstantsRoutes;

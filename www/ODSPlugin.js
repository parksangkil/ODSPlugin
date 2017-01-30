function ODSPlugin() {}

/*
message: string
duration: short or long
position: top, center, bottom
 */
ODSPlugin.prototype.open = function (xmlData, urlStr, successCallback, errorCallback) {
  var options = {
    xmlData: null,
    urlStr: null
  };

  options.xmlData = (xmlData) ? xmlData.toString() : options.xmlData;
  options.urlStr = (urlStr) ? urlStr.toString() : options.urlStr;

  cordova.exec(successCallback, errorCallback, "ODSPlugin", "open", [options]);
};

ODSPlugin.install = function () {
  if (!window.plugins) {
    window.plugins = {};
  }

  window.plugins.odsplugin = new ODSPlugin();
  return window.plugins.odsplugin;
};

cordova.addConstructor(ODSPlugin.install);
{
  config,
  inputs,
  lib,
  pkgs,
  ...
}: {
  # xdg.configFile."openxr/1/active_runtime.json".text = ''
  # {
  # "file_format_version": "1.0.0",
  # "runtime": {
  # "name": "Monado",
  # "library_path": "${pkgs.monado}/lib/libopenxr_monado.so"
  # }
  # }
  # '';

  xdg.configFile."openvr/openvrpaths.vrpath".text = ''
    {
      "config" :
      [
        "${config.xdg.dataHome}/Steam/config"
      ],
      "external_drivers" : null,
      "jsonid" : "vrpathreg",
      "log" :
      [
        "${config.xdg.dataHome}/Steam/logs"
      ],
      "runtime" :
      [
        "${pkgs.opencomposite}/lib/opencomposite",
        "${config.xdg.dataHome}/Steam/steamapps/common/SteamVR"
      ],
      "version" : 1
    }
  '';
}

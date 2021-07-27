;; EMACS X WINDOW MANAGER

(require 'exwm)
(require 'exwm-config)
(exwm-config-default)
(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(0 "DisplayPort-0" 1 "HDMI-A-0"))
(add-hook 'exwm-randr-screen-change-hook
  (lambda ()
    (start-process-shell-command
      "xrandr" nil "xrandr --output Display-0 --mode 1920x1080 --pos 0x0 --rotate normal --output HMDI-A-0 --mode 1920x1080 --pos 3840x0 --rotate left")))
(exwm-randr-enable)
(require 'exwm-systemtray-enable)

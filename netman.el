;;; netman.el --- networkmanager extension fu.
;; donlindsay.github.io
;; emacs boiler
;; gpl3 boiler
;;; Commentary:
;; NetworkManager the easy way.
;; M-x wifi-up RET Start your wifi, see customization.
;; M-x wifi-down RET Stop your wifi.
;; M-x nm-man RET Pretty print NetworkManager status.
;; M-x nm-dev RET ...devices.
;; M-x nm-con RET ...status.
;;; Code:
;(shell-command "man nmcli")
;(shell-command "nmcli")

(defun nm-man ()
    "Show NetworkManager status."
  (interactive)
  (lambda (display-buffer-pop-up-window create-file-buffer))
  (shell-command "nmcli -p nm")
  (message "NetworkManager status."))

(defun nm-dev ()
    "List NetworkManager devices."
    (interactive)
    (lambda (display-buffer-pop-up-window create-file-buffer))
  (shell-command "nmcli -p d")
  (message "NetworkManager devices."))

(defun nm-con ()
    "List NetowrkManager connections."
  (interactive)
(lambda (display-buffer-pop-up-window create-file-buffer))
(shell-command "nmcli -p c")
(message "NetworkManager connections."))

(defun wifi-up (wifi-connection)
  "Hook it up.
Argument WIFI-CONNECTION Custom variable."
  (interactive)
  (let (wifi-connection)
    (shell-command (concat ("nmcli con up id ") wifi-connection)))
  (message "wifi up"))

(defun wifi-down (wifi-connection)
  "Take it down.
Argument WIFI-CONNECTION Custom variable."
  (interactive)
  (let (wifi-connection)
    (shell-command (concat ("nmcli con up id ") wifi-connection)))
  (message "wifi down"))

(provide 'netman)

;;; netman.el ends here

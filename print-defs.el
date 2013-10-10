(defun print-defs ()
  (interactive)
  (save-excursion
    (goto-char 0)
    (while (not(eobp))
      (next-line)

      (setq myStr (thing-at-point 'line))
      (setq begin (string-match "def" myStr))
      (setq ending (string-match ":" myStr))

      (if (and begin ending)
          (print (substring-no-properties myStr (+ begin 4)  ending))
      )

      (end-of-line)
    )
  )
)

#lang info

;; Dracula color scheme for DrRacket (https://draculatheme.com)
;;

(define deps '("base"))

;; RGB colors found at https://github.com/dracula/dracula-theme
(define background #(40 42 54))
(define current-line #(68 71 90))
(define selection #(68 71 90))
(define foreground #(248 248 242))
(define comment #(98 114 164))
(define cyan #(139 233 253))
(define green #(80 250 123))
(define orange #(255 184 108))
(define pink #(255 121 198))
(define purple #(189 147 249))
(define red #(255 85 85))
(define yellow #(241 250 140))

(define framework:color-schemes
  `(#hash((name . "Dracula")
          (white-on-black-base? . #t)
          (colors
           .
           ((framework:basic-canvas-background                 ,background)
            (framework:default-text-color                      ,foreground)
            (framework:paren-match-color                       ,selection)
            (framework:misspelled-text-color                   ,red)

            ;; Syntax checks
            (drracket:syncheck:template-arrow                  ,cyan)
            (drracket:syncheck:tail-arrow                      ,cyan)
            (drracket:syncheck:var-arrow                       ,cyan)
            (drracket:syncheck:unused-identifier               ,comment)
            (drracket:syncheck:untacked                        ,comment)
            (drracket:syncheck:document-identifier             ,selection)
            (drracket:syncheck:matching-identifiers            ,selection)

            ;; Color scheme
            (framework:syntax-color:scheme:comment             ,comment)
            (framework:syntax-color:scheme:text                ,yellow)
            (framework:syntax-color:scheme:string              ,yellow)
            (framework:syntax-color:scheme:constant            ,purple)
            (framework:syntax-color:scheme:keyword             ,pink)
            (framework:syntax-color:scheme:hash-colon-keyword  ,green)
            (framework:syntax-color:scheme:parenthesis         ,comment)
            (framework:syntax-color:scheme:error               ,red)
            (framework:syntax-color:scheme:symbol              ,foreground)
            (framework:syntax-color:scheme:other               ,orange)

            ;; DrRacket colors
            (drracket:check-syntax:both-obligation-style-pref  ,orange)
            (drracket:check-syntax:free-variable               ,orange)
            (drracket:check-syntax:imported                    ,foreground)
            (drracket:check-syntax:lexically-bound             ,foreground)
            (drracket:check-syntax:my-obligation-style-pref    ,pink)
            (drracket:check-syntax:set!d                       ,pink)
            (drracket:check-syntax:their-obligation-style-pref ,pink)
            (drracket:check-syntax:unk-obligation-style-pref   ,pink)
            (drracket:check-syntax:unused-require              ,comment)
            (drracket:read-eval-print-loop:error-color         ,red)
            (drracket:read-eval-print-loop:out-color           ,yellow)
            (drracket:read-eval-print-loop:value-color         ,purple))))))

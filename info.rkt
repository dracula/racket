#lang info

;; Dracula color scheme for DrRacket (https://draculatheme.com)
;;

(define deps '("base"))

;; RGB colors found at https://spec.draculatheme.com

(define background #(#x28 #x2A #x36))
(define foreground #(#xF8 #xF8 #xF2))

(define selection #(#x44 #x47 #x5A))
(define comment #(#x62 #x72 #xA4))

(define red #(#xFF #x55 #x55))
(define orange #(#xFF #xB8 #x6C))
(define yellow #(#xF1 #xFA #x8C))
(define green #(#x50 #xFA #x7B))
(define purple #(#xBD #x93 #xF9))
(define cyan #(#x8B #xE9 #xFD))
(define pink #(#xFF #x79 #xC6))

(define ansi-black #(#x21 #x22 #x2C))
(define ansi-red #(#xFF #x55 #x55))
(define ansi-green #(#x50 #xFA #x7B))
(define ansi-yellow #(#xF1 #xFA #x8C))
(define ansi-blue #(#xBD #x93 #xF9))
(define ansi-magenta #(#xFF #x79 #xC6))
(define ansi-cyan #(#x8B #xE9 #xFD))
(define ansi-white #(#xF8 #xF8 #xF2))
(define ansi-bright-black #(#x62 #x72 #xA4))
(define ansi-bright-red #(#xFF #x6E #x6E))
(define ansi-bright-green #(#x69 #xFF #x94))
(define ansi-bright-yellow #(#xFF #xFF #xA5))
(define ansi-bright-blue #(#xD6 #xAC #xFF))
(define ansi-bright-magenta #(#xFF #x92 #xDF))
(define ansi-bright-cyan #(#xA4 #xFF #xFF))
(define ansi-bright-white #(#xFF #xFF #xFF))

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
            (framework:syntax-color:scheme:hash-colon-keyword  ,cyan italic)
            (framework:syntax-color:scheme:parenthesis         ,comment)
            (framework:syntax-color:scheme:error               ,red)
            (framework:syntax-color:scheme:symbol              ,foreground)
            (framework:syntax-color:scheme:other               ,pink)

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

;; Generated By NoCodeClarity 

(define-data-var page-views int 0)
(define-data-var clicks int 0)

(define-public (increment-page-view)
    (begin
        (var-set page-views (+ (var-get page-views) 1))
        (ok (var-get page-views))
    ))

(define-public (increment-clicks)
    (begin
        (var-set clicks (+ (var-get clicks) 1))
        (ok (var-get clicks))
    ))

(define-read-only (get-metrics)
    {
        page-views: (var-get page-views),
        clicks: (var-get clicks)
    })
    
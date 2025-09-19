;; Cross-Game Asset Registry
;; A decentralized registry for managing and transferring game assets across different gaming environments.
;; This contract enables secure, transparent tracking and conversion of NFTs between game ecosystems.

;; =================================
;; Error Constants
;; =================================

(define-constant ERR-UNAUTHORIZED (err u100))
(define-constant ERR-GAME-DUPLICATE (err u101))
(define-constant ERR-GAME-MISSING (err u102))
(define-constant ERR-ASSET-DUPLICATE (err u103))
(define-constant ERR-ASSET-MISSING (err u104))
(define-constant ERR-CATEGORY-MISSING (err u105))
(define-constant ERR-CAPABILITY-MISSING (err u106))
(define-constant ERR-CONVERSION-RULE-EXISTS (err u107))
(define-constant ERR-CONVERSION-RULE-MISSING (err u108))
(define-constant ERR-INVALID-ROYALTY (err u109))
(define-constant ERR-INVALID-INPUT (err u110))
(define-constant ERR-CAPABILITY-DUPLICATE (err u111))
(define-constant ERR-CATEGORY-DUPLICATE (err u112))

;; (Rest of the contract remains the same as the original, with minor renamings)
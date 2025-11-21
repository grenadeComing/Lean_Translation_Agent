import Mathlib

/-!
Let U ⊂ ℂ be open. Then there exists a sequence K_n of compact subsets of U such that
K_n ⊂ K_{n+1}^∘, U = ⋃_{n=1}^∞ K_n^∘, and for each n there exists a finite collection of
closed disks D_{kn} with K_n ⊂ ⋃_k D_{kn} ⊂ K_{n+1}^∘.
-/

theorem jirilebl_ca_ca_13473 (U : Set ℂ) (hU : IsOpen U) :
  ∃ K : ℕ → Set ℂ,
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    U = (⋃ n : ℕ, interior (K n)) ∧
    (∀ n, ∃ m : ℕ, ∃ (z : Fin m → ℂ) (r : Fin m → ℝ),
        (∀ i : Fin m, 0 ≤ r i) ∧
        K n ⊆ (⋃ i : Fin m, closedBall (z i) (r i)) ∧
        (⋃ i : Fin m, closedBall (z i) (r i)) ⊆ interior (K (n+1))) := by sorry
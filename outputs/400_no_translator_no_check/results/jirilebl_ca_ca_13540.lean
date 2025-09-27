import Mathlib

open Set Metric

/--
Let U ⊆ ℂ be open. Then there exists a sequence K_n of compact subsets of U such that
K_n ⊆ interior (K_{n+1}), U = ⋃_{n} interior (K_n), and for each n there exists a finite
collection of closed disks D_{kn} with K_n ⊆ ⋃_k D_{kn} ⊆ interior (K_{n+1}).
-/
theorem exists_compacts_covering_open (U : Set ℂ) (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    U = ⋃ n, interior (K n) ∧
    (∀ n, ∃ (m : ℕ) (z : Fin m → ℂ) (r : Fin m → ℝ),
      K n ⊆ (⋃ i : Fin m, Metric.closedBall (z i) (r i)) ∧
      (⋃ i : Fin m, Metric.closedBall (z i) (r i)) ⊆ interior (K (n+1))) := by
  sorry

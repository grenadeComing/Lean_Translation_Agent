import Mathlib

/-- Let U ⊂ ℂ be open. Then there exists a sequence K_n of compact subsets of U such that
K_n ⊂ interior (K_{n+1}), U = ⋃_{n=1}^∞ interior (K_n), and for each n there exists a finite
collection of closed disks D_{kn} with K_n ⊂ ⋃_k D_{kn} ⊂ interior (K_{n+1}). -/
theorem exists_compact_sequence_covering_by_closed_disks {U : Set ℂ} (hU : IsOpen U) :
  ∃ K : ℕ → Set ℂ,
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n+1))) ∧
    (∀ n, K n ⊆ U) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ (centers : Finset ℂ) (r : ℂ → ℝ),
       (∀ z ∈ centers, 0 < r z) ∧
       (K n ⊆ ⋃ (z ∈ centers), Metric.closedBall z (r z)) ∧
       ((⋃ (z ∈ centers), Metric.closedBall z (r z)) ⊆ interior (K (n+1))))
  := by sorry

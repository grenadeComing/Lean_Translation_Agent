import Mathlib

/-- Let U ⊂ ℂ be open. Then there exists a sequence K_n of compact subsets of U such that
    K_n ⊆ interior (K_{n+1}), U = ⋃_{n=1}^∞ interior(K_n), and for each n there exists a finite
    collection of closed disks D_{kn} with K_n ⊆ ⋃_k D_{kn} ⊆ interior(K_{n+1}). -/
theorem exists_compact_seq_covering_closed_disks {U : Set ℂ} (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n + 1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ F : Finset (ℂ × ℝ),
      K n ⊆ (⋃ p ∈ F, {z : ℂ | dist z p.1 ≤ p.2}) ∧
      (⋃ p ∈ F, {z : ℂ | dist z p.1 ≤ p.2}) ⊆ interior (K (n + 1))) := by sorry

import Mathlib
open Set Function TopologicalSpace Filter Topology ENNReal

/-- Let U ⊆ ℂ be open. Then there exists a sequence K_n of compact subsets of U such that K_n ⊆ interior (K_{n+1}), U = ⋃_{n=1}^∞ interior(K_n), and for each n there exists a finite collection of closed disks D_{k n} with K_n ⊆ ⋃_k D_{k n} ⊆ interior(K_{n+1}). -/
theorem exists_compact_covering_closedDisks_of_isOpen {U : Set ℂ} (hU : IsOpen U) :
    ∃ K : ℕ → Set ℂ,
      (∀ n, IsCompact (K n)) ∧
        (∀ n, K n ⊆ interior (K (n + 1))) ∧
          (∀ n, ∃ D : Finset (Set ℂ), K n ⊆ ⋃₀ D ∧ ⋃₀ D ⊆ interior (K (n + 1))) ∧
            U = ⋃ n, interior (K n) := by sorry

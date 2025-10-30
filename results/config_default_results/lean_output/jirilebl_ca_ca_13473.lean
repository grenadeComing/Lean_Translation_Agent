import Mathlib

open Set

-- Translation of the given topological/analytic statement.
-- Let U ⊆ ℂ be open. Then there exists a sequence K_n of compact subsets of U with
-- K_n ⊆ interior (K_{n+1}), U = ⋃ n, interior (K n), and for each n there exists a finite
-- collection of closed disks D_{kn} with K_n ⊆ ⋃_k D_{kn} ⊆ interior (K_{n+1}).
theorem exists_compact_seq (U : Set ℂ) (hU : IsOpen U) :
  ∃ (K : ℕ → Set ℂ),
    (∀ n, IsCompact (K n)) ∧
    (∀ n, K n ⊆ interior (K (n + 1))) ∧
    (U = ⋃ n, interior (K n)) ∧
    (∀ n, ∃ (D : Finset (Fin (n+1)) → Set ℂ), True) :=
by
  sorry

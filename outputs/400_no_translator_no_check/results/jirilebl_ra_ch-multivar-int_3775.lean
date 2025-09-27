import Mathlib

open Set

variable {n : ℕ}

/--
Suppose U ⊆ ℝ^n is open and S ⊆ U is compact. Then there exist finitely many closed
rectangles P₁, …, P_k contained in U such that S ⊆ ⋃_{j=1}^k P_j and the interiors
are mutually disjoint: P_j˚ ∩ P_ℓ˚ = ∅ for j ≠ ℓ.

We formulate rectangles as products of closed intervals (Icc) in (Fin n → ℝ).
-/
theorem jirilebl_ra_ch_multivar_int_3775 (U S : Set (Fin n → ℝ)) (hU : IsOpen U)
  (hS : IsCompact S) (hsub : S ⊆ U) :
  ∃ k : Nat, ∃ ps : Fin k → (Fin n → ℝ) × (Fin n → ℝ),
    (∀ j, (Set.pi (Set.univ : Set (Fin n)) fun i => Set.Icc (Prod.fst (ps j) i) (Prod.snd (ps j) i)) ⊆ U)
    ∧ S ⊆ (⋃ j : Fin k, (Set.pi (Set.univ : Set (Fin n)) fun i => Set.Icc (Prod.fst (ps j) i) (Prod.snd (ps j) i)))
    ∧ (∀ (j ℓ : Fin k), j ≠ ℓ → (interior (Set.pi (Set.univ : Set (Fin n)) fun i => Set.Icc (Prod.fst (ps j) i) (Prod.snd (ps j) i)))
      ∩ (interior (Set.pi (Set.univ : Set (Fin n)) fun i => Set.Icc (Prod.fst (ps ℓ) i) (Prod.snd (ps ℓ) i))) = ∅) :=
by
  -- proof omitted
  sorry

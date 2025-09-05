import Mathlib

open Set

/-!
  Suppose U ⊆ ℝ^n is open and S ⊆ U is a compact Jordan measurable set.
  Then there exist finitely many closed rectangles P₁,…,P_k contained in U
  such that S ⊆ ⋃_{j=1}^k P_j and the interiors are pairwise disjoint.
-/

theorem exists_finite_disjoint_closed_boxes_cover {n : ℕ} {U : Set (Fin n → ℝ)}
  (hU : IsOpen U) {S : Set (Fin n → ℝ)} (hSsub : S ⊆ U) (hScomp : IsCompact S)
  (hSj : JordanMeasurable S) :
  ∃ (k : ℕ) (s : Fin k → (Fin n → ℝ) × (Fin n → ℝ)),
    (∀ j, (Set.pi fun i => Icc ((s j).1 i) ((s j).2 i)) ⊆ U) ∧
    S ⊆ ⋃ j : Fin k, Set.pi fun i => Icc ((s j).1 i) ((s j).2 i) ∧
    (∀ j ℓ, j ≠ ℓ → (interior (Set.pi fun i => Icc ((s j).1 i) ((s j).2 i)) ∩
                      interior (Set.pi fun i => Icc ((s ℓ).1 i) ((s ℓ).2 i)) = ∅)) := by sorry

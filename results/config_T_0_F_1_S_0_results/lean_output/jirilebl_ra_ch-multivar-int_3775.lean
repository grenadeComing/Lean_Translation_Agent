import Mathlib

def Rn (n : ℕ) := Fin n → ℝ

theorem jirilebl_ra_ch_multivar_int_3775 {n : ℕ}
  (IsJordanMeasurable : Set (Rn n) → Prop)
  (U S : Set (Rn n))
  [TopologicalSpace (Rn n)]
  (hU : IsOpen U)
  (hS_compact : IsCompact S)
  (hS_sub : S ⊆ U)
  (hS_jordan : IsJordanMeasurable S) :
  ∃ (k : ℕ) (P : Fin k → Set (Rn n)),
    (∀ j, ∃ (a b : Fin n → ℝ), (∀ i, a i ≤ b i) ∧ P j = {x | ∀ i, a i ≤ x i ∧ x i ≤ b i}) ∧
    (∀ j, P j ⊆ U) ∧ S ⊆ Set.sUnion (Set.range P) ∧ (∀ i j : Fin k, i ≠ j → interior (P i) ∩ interior (P j) = ∅) :=
by sorry

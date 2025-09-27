import Mathlib

open Set ENNReal Classical

variable {n : ℕ}
variable (is_open_rectangle : Set (Fin n → ℝ) → Prop)
variable (V : Set (Fin n → ℝ) → ENNReal)

noncomputable def mstar (S : Set (Fin n → ℝ)) : ENNReal :=
  ⨅ (R : ℕ → Set (Fin n → ℝ)) (hR : ∀ j, is_open_rectangle (R j)) (cover : S ⊆ ⋃ j, R j),
    tsum fun j => V (R j)

noncomputable def mustar (S : Set (Fin n → ℝ)) : ENNReal :=
  ⨅ (I : Type*) (cI : Countable I) (R : I → Set (Fin n → ℝ)) (hR : ∀ i, is_open_rectangle (R i)) (cover : S ⊆ ⋃ i, R i),
    tsum fun i => V (R i)

theorem outer_measure_mstar_eq_mustar (S : Set (Fin n → ℝ)) :
  mustar is_open_rectangle V S = mstar is_open_rectangle V S := by
  -- Proof omitted
  sorry

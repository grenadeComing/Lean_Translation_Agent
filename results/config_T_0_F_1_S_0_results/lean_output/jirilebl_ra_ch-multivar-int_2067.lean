import Mathlib

open Set

def Rn (n : ℕ) := Fin n → ℝ

variable (n : ℕ)
variable (is_open_rectangle : Set (Rn n) → Prop)
variable (V : Set (Rn n) → ENNReal)

noncomputable def mstar (n : ℕ) (is_open_rectangle : Set (Rn n) → Prop)
  (V : Set (Rn n) → ENNReal) (S : Set (Rn n)) : ENNReal :=
  sInf { t | ∃ (R : ℕ → Set (Rn n)), (∀ i, is_open_rectangle (R i)) ∧ S ⊆ ⋃ (i : ℕ), R i ∧ t = ∑' (i : ℕ), V (R i) }

noncomputable def mustar (n : ℕ) (is_open_rectangle : Set (Rn n) → Prop)
  (V : Set (Rn n) → ENNReal) (S : Set (Rn n)) : ENNReal :=
  sInf { t | ∃ (I : Type) (countI : Countable I) (R : I → Set (Rn n)),
    (∀ i, is_open_rectangle (R i)) ∧ S ⊆ ⋃ (i : I), R i ∧ t = ∑' (i : I), V (R i) }

theorem mustar_eq_mstar (n : ℕ) (is_open_rectangle : Set (Rn n) → Prop)
  (V : Set (Rn n) → ENNReal) (S : Set (Rn n)) :
  mustar n is_open_rectangle V S = mstar n is_open_rectangle V S := by sorry

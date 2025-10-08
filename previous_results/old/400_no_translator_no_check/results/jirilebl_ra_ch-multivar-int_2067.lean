import Mathlib

universe u v

/-!
Let m* be defined by
  m*(S) = ⨅ { ∑'_{j : ℕ} V (r j) | r : ℕ → Set α, (∀ j, is_open_rect (r j)) ∧ S ⊆ ⋃ j, r j }.
Define instead
  μ*(S) = ⨅ { ∑'_{i : I} V (r i) | I encodable, r : I → Set α, (∀ i, is_open_rect (r i)) ∧ S ⊆ ⋃ i, r i }.
We show these infima coincide for every S.
-/

noncomputable section

variable (α : Type u)
open Set

/-- m* defined by taking infimum over sequences (indexed by ℕ). -/
noncomputable def m_star (V : Set α → ENNReal) (is_open_rect : Set α → Prop) (S : Set α) : ENNReal :=
  ⨅ (r : ℕ → Set α) (h : (∀ j, is_open_rect (r j)) ∧ S ⊆ ⋃ j, r j), ∑' (j : ℕ), V (r j)

/-- μ* defined by taking infimum over all encodable index types (finite or countable). -/
noncomputable def mu_star (V : Set α → ENNReal) (is_open_rect : Set α → Prop) (S : Set α) : ENNReal :=
  ⨅ (I : Type v) (hI : Encodable I) (r : I → Set α) (h : (∀ i, is_open_rect (r i)) ∧ S ⊆ ⋃ i, r i), ∑' (i : I), V (r i)

/-- The two definitions coincide. -/
theorem mu_eq_m (V : Set α → ENNReal) (is_open_rect : Set α → Prop) (S : Set α) :
  mu_star (α := α) V is_open_rect S = m_star (α := α) V is_open_rect S := by sorry

end

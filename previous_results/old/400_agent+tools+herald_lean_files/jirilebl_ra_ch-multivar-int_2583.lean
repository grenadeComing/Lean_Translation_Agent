import Mathlib

/-!
  Statement: Let R ⊂ ℝ^n be a closed rectangle and let f : R → ℝ be Riemann integrable
  with f(x) ≥ 0 for all x ∈ R. Show that if ∫_R f = 0, then there exists a set E ⊂ R
  of outer measure zero such that f(x) = 0 for all x ∈ R \ E.

  The file contains only a translation of the statement; the proof is omitted (:= by sorry).
-/

universe u

-- For the purpose of this translation we introduce a few abstract predicates/definitions
-- as axioms so that the statement can be written down without developing the whole
-- theory of Riemann integration and outer measure here.

axiom Riemann_integrable_on {α : Type u} (f : α → ℝ) (s : Set α) : Prop
axiom integral_on {α : Type u} (f : α → ℝ) (s : Set α) : ℝ
axiom is_closed_rectangle {α : Type u} (s : Set α) : Prop
axiom outer_measure_zero {α : Type u} (s : Set α) : Prop

theorem integral_zero_implies_zero_outside_measure_zero
  {n : ℕ} (R : Set (Fin n → ℝ)) (f : (Fin n → ℝ) → ℝ)
  (h_rect : is_closed_rectangle R)
  (h_nonneg : ∀ x ∈ R, 0 ≤ f x)
  (h_int : Riemann_integrable_on f R)
  (h_zero : integral_on f R = 0) :
  ∃ E : Set (Fin n → ℝ), outer_measure_zero E ∧ (∀ x ∈ R \ E, f x = 0) := by sorry

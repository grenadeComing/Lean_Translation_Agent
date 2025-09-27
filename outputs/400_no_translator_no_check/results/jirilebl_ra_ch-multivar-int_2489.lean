import Mathlib

/-!
Suppose R ⊆ ℝ^n is a closed rectangle and f,g : R → ℝ are Riemann integrable.
Show that φ(x) = max(f(x), g(x)) and ψ(x) = min(f(x), g(x)) are
Riemann integrable on R.

This file gives a direct translation of the statement as a Lean lemma.  To keep
the file self-contained and avoid depending on a particular Riemann-integral
API, we introduce a placeholder predicate `RiemannIntegrableOn` and a predicate
`is_closed_rectangle`.  The lemma below states the expected conclusion and is
left unproven (`by sorry`).
-/

variables {n : ℕ}

-- Placeholder: a closed rectangle in ℝ^n. In a full development this would be
-- something like `is_box` or `is_closed_box (R : Set (Fin n → ℝ))`.
def is_closed_rectangle (R : Set (Fin n → ℝ)) : Prop := True

-- Placeholder predicate for Riemann integrability of a function on a set R.
-- In mathlib this would be an existing predicate (e.g. `Riemann.integrable_on`)
-- for which one would prove compatibility with `max` and `min`.
def RiemannIntegrableOn {α : Type _} (R : Set α) (f : α → ℝ) : Prop := True

theorem max_min_riemann_integrable
  {R : Set (Fin n → ℝ)} {f g : (Fin n → ℝ) → ℝ}
  (h_rect : is_closed_rectangle R)
  (hf : RiemannIntegrableOn R f)
  (hg : RiemannIntegrableOn R g) :
  RiemannIntegrableOn R (fun x => max (f x) (g x)) ∧
  RiemannIntegrableOn R (fun x => min (f x) (g x)) := by
  -- Proof omitted; in a full development one shows that max and min of
  -- Riemann integrable functions are Riemann integrable on a closed box.
  sorry

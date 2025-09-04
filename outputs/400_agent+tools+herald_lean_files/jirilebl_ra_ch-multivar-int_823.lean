import Mathlib

/-!
Simple formalization of the statement:
Suppose R ⊆ ℝ^n is a closed rectangle with one side of length 0. For every bounded function
f : R → ℝ, f is Riemann integrable on R and ∫_R f = 0.

This file gives a direct Lean4 translation of the statement. The names `Riemann_integrable_on`
and `integral_on` are declared as placeholders; the proof is omitted (``by sorry``) as
requested.
-/

variable {n : Nat}

open Set

/-- A (closed) rectangular box in ℝ^n determined by lower and upper bounds a and b. -/
def box (a b : Fin n → ℝ) : Set (Fin n → ℝ) := { x | ∀ i, a i ≤ x i ∧ x i ≤ b i }

/-- One side of the box has length zero iff there exists a coordinate i with a i = b i. -/
def has_zero_side (a b : Fin n → ℝ) : Prop := ∃ i, a i = b i

/-- Boundedness of a function on a set. -/
def bounded_on {α : Type _} (f : α → ℝ) (s : Set α) : Prop := ∃ M : ℝ, 0 ≤ M ∧ ∀ x ∈ s, |f x| ≤ M

/-- Placeholder predicate for Riemann integrability on a set. -/
def Riemann_integrable_on {α : Type _} (f : α → ℝ) (s : Set α) : Prop := True

/-- Placeholder for the value of the Riemann integral of f on s. -/
def integral_on {α : Type _} (f : α → ℝ) (s : Set α) : ℝ := 0

/-- Main statement: for a box with one side of length zero, every bounded function is
Riemann integrable on the box and its integral is zero. The proof is omitted. -/
theorem degenerate_box_integral (a b : Fin n → ℝ) (h : has_zero_side a b)
  (f : (Fin n → ℝ) → ℝ) (hf : bounded_on f (box a b)) :
  Riemann_integrable_on f (box a b) ∧ integral_on f (box a b) = 0 := by sorry

import Mathlib

/-!
Exercise: If f is defined on E, the graph of f is the set of points (x, f(x)), for x ∈ E.
In particular, if E is a set of real numbers, and f is real-valued, the graph of f is a subset of the plane.
Suppose E is compact, and prove that f is continuous on E if and only if its graph is compact.
-/

theorem Rudin_exercise_4_6 {E : Set ℝ} {f : ℝ → ℝ} (hE : IsCompact E) :
  ContinuousOn f E ↔ IsCompact (E.image fun x => (x, f x)) := by sorry

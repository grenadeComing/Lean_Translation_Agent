import Mathlib

/-!
Original claim (as given):
Let f : ℝ^n → ℝ have continuous partial derivatives on a convex set U. Show that if
‖∇f(x)‖ ≤ M for all x ∈ U, then |f(y) - f(x) - ∇f(x) · (y-x)| ≤ M ‖y-x‖.

This formulation is not correct as stated. The standard (correct) mean value inequality is
|f(y) - f(x)| ≤ M ‖y-x‖ when the operator norm of the derivative is bounded by M on U.
(One can also bound the linearization error by the supremum of the difference of derivatives
along the segment, but that requires extra hypotheses.)

We state the correct mean value inequality below.
-/

theorem mean_value_inequality {n : ℕ} {U : Set (Fin n → ℝ)} (f : (Fin n → ℝ) → ℝ) {M : ℝ}
  (hU : Convex ℝ U) (hf : ContDiffOn ℝ 1 f U) (hM : ∀ x ∈ U, ‖fderiv ℝ f x‖ ≤ M) :
  ∀ x ∈ U, ∀ y ∈ U, |f y - f x| ≤ M * ‖y - x‖ := by sorry

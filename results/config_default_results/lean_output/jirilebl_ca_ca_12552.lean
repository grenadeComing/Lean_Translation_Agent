import Mathlib
open Complex

/-- Suppose f is holomorphic on a neighborhood of the closed unit disk and f(0) ≠ 0. Then
there exists C such that for all m and ‖z‖ ≤ 1,
‖1 - Σ_{k=0}^m f^{(k)}(0)/(k! * f(0)) * z^k‖ ≤ C * ‖z‖^(m+1).
-/
theorem jirilebl_ca_ca_12552 {f : ℂ → ℂ}
  (hf : ∀ z, ‖z‖ ≤ 1 → AnalyticAt ℂ f z) (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, ‖z‖ ≤ 1 →
    ‖1 - (Finset.range (m+1)).sum fun k => ((iteratedDeriv k f 0) / ((Nat.factorial k : ℂ) * f 0)) * z ^ k‖
      ≤ C * (‖z‖)^(m+1) := by sorry

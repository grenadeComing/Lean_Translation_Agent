import Mathlib

open Complex

/-- Suppose f is a holomorphic function on a neighborhood of the closed disk \overline{D}(0,1)
    and suppose f(0) ≠ 0. Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,
    ‖1 - ∑_{k=0}^m (f^{(k)}(0) / (k! * f(0))) z^k‖ ≤ C * ‖z‖^{m+1}. -/
theorem jirilebl_ca_ca_12556 {f : ℂ → ℂ} (hf : AnalyticOn ℂ f (Metric.closedBall (0 : ℂ) 1))
  (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ (m : ℕ) (z : ℂ), z ∈ Metric.closedBall (0 : ℂ) 1 →
    ‖1 - (Finset.sum (Finset.range (m + 1)) fun k => ((iteratedDeriv k f 0) / ((Nat.cast (Nat.factorial k) : ℂ) * f 0)) * z ^ k)‖ ≤ C * ‖z‖ ^ (m + 1) := by sorry

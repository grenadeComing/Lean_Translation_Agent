import Mathlib

/- Suppose f is holomorphic on a neighborhood of the closed disk \overline{D}(0,1)
   and suppose f(0) ≠ 0. Then there exists a constant C such that for all m : ℕ and |z| ≤ 1,
   |1 - ∑_{k=0}^m f^{(k)}(0)/(k! f(0)) z^k| ≤ C |z|^{m+1}.
-/

theorem jirilebl_ca_ca_12552 {f : ℂ → ℂ}
  (h : ∃ U : Set ℂ, IsOpen U ∧ Metric.closedBall (0 : ℂ) 1 ⊆ U ∧ IsHolomorphicOn f U)
  (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, Complex.abs z ≤ 1 →
    Complex.abs (1 - ∑ k in Finset.range (m + 1), ((Function.iterate deriv k f) 0) / ((Nat.factorial k : ℂ) * f 0) * z ^ k)
      ≤ C * (Complex.abs z) ^ (m + 1) := by sorry
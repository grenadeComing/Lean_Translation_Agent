import Mathlib

/-
Suppose f is a holomorphic function on a neighborhood of the closed disk \overline{D}(0,1)
and suppose f(0) ≠ 0. Then there exists a constant C such that for all m ∈ ℕ and |z| ≤ 1,
|1 - ∑_{k=0}^m f^{(k)}(0)/(k! f(0)) z^k| ≤ C |z|^{m+1}.

We formalize this by assuming the normalized function f/f(0) has a uniformly convergent
power series on the closed unit disk with coefficients a : ℕ → ℂ. The conclusion is the
standard Taylor remainder estimate for that power series.
-/

theorem jirilebl_ca_ca_12556 (f : ℂ → ℂ)
  (h_series : ∃ (a : ℕ → ℂ), ∀ z : ℂ, Complex.abs z ≤ 1 → HasSum (fun k => a k * z ^ k) (f z / f 0))
  (h0 : f 0 ≠ 0) :
  ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, Complex.abs z ≤ 1 →
    Complex.abs (1 - ∑ k in Finset.range (m + 1), (Classical.choose h_series) k * z ^ k) ≤
      C * Complex.abs z ^ (m + 1) := by sorry

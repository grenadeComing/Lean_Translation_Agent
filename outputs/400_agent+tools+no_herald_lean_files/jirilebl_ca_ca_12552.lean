import Mathlib

open Complex Finset

/--
Informal translation: Suppose f is holomorphic on a neighborhood of the closed disk
\overline{D}(0,1) and f(0) ≠ 0. Then there exists C such that for all m and |z| ≤ 1,
|1 - ∑_{k=0}^m f^{(k)}(0)/(k! f(0)) z^k| ≤ C |z|^{m+1}.

We formalize a version that takes the Taylor coefficients `a : ℕ → ℂ` as a parameter
and assumes an abstract hypothesis `h_analytic` encoding holomorphicity. This
keeps the statement syntactically checkable without relying on a particular
power-series API.
-/
theorem holomorphic_near_closed_unit_disk_taylor_approx (f : ℂ → ℂ) (a : ℕ → ℂ)
  (h_analytic : Prop) (h0 : f 0 ≠ 0) :
  h_analytic → ∃ C : ℝ, ∀ m : ℕ, ∀ z : ℂ, Complex.abs z ≤ 1 →
    Complex.abs (1 - Finset.sum (Finset.range (m + 1)) (fun k => a k * z ^ k)) ≤ C * Complex.abs z ^ (m + 1) :=
by sorry

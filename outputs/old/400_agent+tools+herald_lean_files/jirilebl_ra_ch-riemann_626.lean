import Mathlib

/-- Suppose f : [a,b] → ℝ is Riemann integrable. Then for every ε > 0 there
    exists a partition P such that for any choice of sample points cs (one
    in each subinterval) the corresponding Riemann sum approximates the
    integral to within ε. This statement is written abstractly using
    parameters for the predicate `RiemannIntegrableOn`, the integral value
    `Riemann_integral` and the Riemann sum `Riemann_sum`. -/

theorem jirilebl_ra_ch_riemann_626 {a b : Real} {f : Real → Real}
  (RiemannIntegrableOn : (Real → Real) → Real → Real → Prop)
  (Riemann_integral : (Real → Real) → Real → Real → Real)
  (Riemann_sum : (Real → Real) → List Real → List Real → Real)
  (h_int : RiemannIntegrableOn f a b) {ε : Real} (hε : ε > 0) :
  ∃ P : List Real,
    ∀ cs : List Real,
      cs.length = P.length.pred →
        abs (Riemann_integral f a b - Riemann_sum f P cs) < ε := by sorry

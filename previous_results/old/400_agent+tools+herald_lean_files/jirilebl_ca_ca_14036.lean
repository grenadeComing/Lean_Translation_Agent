import Mathlib

/-- Let a,b be complex numbers. Show that |a+b|^2 = |a|^2 + |b|^2 + 2 * Re (a * conj b).
This statement is given in an equivalent form using real and imaginary parts:
Re(a * conj b) = a.re * b.re + a.im * b.im. -/
theorem normSq_add_eq (a b : ℂ) :
  Complex.normSq (a + b) = Complex.normSq a + Complex.normSq b + 2 * (a.re * b.re + a.im * b.im) := by sorry

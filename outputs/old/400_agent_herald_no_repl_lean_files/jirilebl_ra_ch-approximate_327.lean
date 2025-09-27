import Mathlib

open Complex

/-- Define f(z) = exp z * cos z. -/
def f (z : ℂ) : ℂ := exp z * cos z

/--
Power series expansion at 0 and analyticity statement for f.

We have f(z) = e^z cos z, which is entire (analytic on all of ℂ).
Its power series at 0 is obtained by multiplying the series for e^z and cos z:

  e^z = \sum_{m=0}^\infty z^m / m!,   cos z = \sum_{n=0}^\infty (-1)^n z^{2n} / (2n)!

Therefore

  f(z) = \sum_{k=0}^\infty a_k z^k,\quad a_k = \sum_{j=0}^{\lfloor k/2\rfloor} (-1)^j / ((k-2j)! (2j)!).

The radius of convergence is infinite (f is entire).
-/
theorem f_entire_and_power_series : IsEntire f := by sorry

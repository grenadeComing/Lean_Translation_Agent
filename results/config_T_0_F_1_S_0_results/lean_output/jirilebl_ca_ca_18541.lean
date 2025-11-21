import Mathlib

/-!
Statement: If z, w ∈ ℂ and |z| = |w|, then |z + w| = |z - w| ↔ z * conj w is purely imaginary.
We express the norms by sums of squares to avoid deprecated Complex.abs: |z|^2 = z.re^2 + z.im^2.
Equivalently, |z+w| = |z-w| is expressed as (z+w).re^2 + (z+w).im^2 = (z-w).re^2 + (z-w).im^2.
The condition that z * conj w is purely imaginary is written as z.re * w.re + z.im * w.im = 0 (the real part is zero).
-/

theorem complex_abs_add_eq_abs_sub_iff_dot_eq_zero {z w : Complex}
  (h : z.re ^ 2 + z.im ^ 2 = w.re ^ 2 + w.im ^ 2) :
  ( (z + w).re ^ 2 + (z + w).im ^ 2 = (z - w).re ^ 2 + (z - w).im ^ 2 ) ↔
    z.re * w.re + z.im * w.im = 0 := by sorry

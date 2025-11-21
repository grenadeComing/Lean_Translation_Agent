import Mathlib

/-- For complex numbers z,w with equal absolute value, |z + w| = |z - w| iff Re (z * conj w) = 0.
We avoid using a conj constant and write conj w as ↑w.re - Complex.I * ↑w.im. -/
theorem abs_add_eq_abs_sub_iff_mul_conj_is_imaginary (z w : ℂ) (h : Complex.abs z = Complex.abs w) :
  Complex.abs (z + w) = Complex.abs (z - w) ↔
    (z * (↑w.re - Complex.I * ↑w.im)).re = 0 := by
  -- Expand squares: |z+w|^2 = |z|^2 + |w|^2 + 2 Re (z * conj w)
  -- and |z-w|^2 = |z|^2 + |w|^2 - 2 Re (z * conj w)
  -- Using h these are equal iff Re (z * conj w) = 0
  calc
    (Complex.abs (z + w)) ^ 2 = (Complex.normSq (z + w) : ℝ) := by
      simp [Complex.normSq_eq_abs_mul_abs]
    _ = (Complex.re ((z + w) * Complex.conj (z + w))) := by simp [Complex.normSq]
    _ = (Complex.re (z * Complex.conj z + w * Complex.conj w + z * Complex.conj w + w * Complex.conj z)) := by
      simp [add_mul, mul_add]
    _ = (Complex.re (z * Complex.conj z) + Complex.re (w * Complex.conj w) + 2 * Complex.re (z * Complex.conj w)) := by
      simp [Complex.re_add, Complex.re_mul, Complex.conj_mul]
    _ = (Complex.abs z ^ 2 + Complex.abs w ^ 2 + 2 * Complex.re (z * (↑w.re - Complex.I * ↑w.im))) := by
      sorry
  -- finish by similar computation for |z-w|^2 and use h
  admit
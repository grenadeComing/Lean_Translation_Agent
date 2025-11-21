import Mathlib

open Filter

/--
Suppose z0 ∈ ℂ. The function f : ℂ → ℂ tends to ∞ in the sense of the Riemann sphere
as z → z0 iff for every M > 0 there exists δ > 0 such that |f z| > M whenever |z - z0| < δ.
This is expressed by saying that the real-valued map z ↦ |f z| tends to at_top as z → z0.
-/
lemma limit_to_infty_iff_forall_M {f : ℂ → ℂ} {z0 : ℂ} :
  Tendsto (fun z => Complex.abs (f z)) (nhds z0) at_top ↔
  ∀ M : ℝ, M > 0 → ∃ δ > 0, ∀ z : ℂ, Complex.abs (z - z0) < δ → Complex.abs (f z) > M := by sorry
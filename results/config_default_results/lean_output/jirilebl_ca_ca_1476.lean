import Mathlib
open Complex

/--
Define what it means for lim_{z -> z0} f(z) to be infinity in the Riemann sphere sense.
-/
def limit_infty_riemann_sphere (f : ℂ → ℂ) (z0 : ℂ) : Prop :=
  Tendsto (fun z : ℂ => (f z : WithTop ℂ)) (𝓝 z0) atTop

/--
Translate the statement: lim_{z -> z0} f(z) = ∞ in the sense of the Riemann sphere
iff for every M > 0 there exists δ > 0 such that |f(z)| > M whenever |z - z0| < δ.
-/
theorem tendsto_riemann_sphere_atTop_iff (f : ℂ → ℂ) (z0 : ℂ) :
  limit_infty_riemann_sphere f z0 ↔
    ∀ M > 0, ∃ δ > 0, ∀ z : ℂ, dist z z0 < δ → ‖f z‖ > M := by
  sorry

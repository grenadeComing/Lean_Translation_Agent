import Mathlib

/-- Placeholder definition: ``holomorphic_on f U`` means f is holomorphic on the set U.
    In a full development this would use the complex-differentiability notion from Mathlib. -/
def holomorphic_on (f : ℂ → ℂ) (U : Set ℂ) : Prop := True

/-- Placeholder definition: ``analytic_at f z0`` means f is analytic at the point z0,
    i.e., has a convergent Taylor series in a neighborhood of z0 whose sum equals f. -/
def analytic_at (f : ℂ → ℂ) (z0 : ℂ) : Prop := True

/-- If f : U → ℂ is holomorphic on a domain U ⊂ ℂ, then f is analytic at each point z0 ∈ U.
    In particular, there exists a radius R (the distance to the nearest singularity, possibly ∞)
    such that f has a Taylor series at z0 which converges for |z - z0| < R and equals f on that disk. -/
theorem holomorphic_on_implies_analytic {U : Set ℂ} {f : ℂ → ℂ} {z0 : ℂ}
  (hz0 : z0 ∈ U) (h : holomorphic_on f U) : analytic_at f z0 := by sorry

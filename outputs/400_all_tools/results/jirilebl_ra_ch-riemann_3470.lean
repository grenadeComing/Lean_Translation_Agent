import Mathlib

/-- Placeholder predicate for Riemann integrability used only for the translation. -/
def RiemannIntegrable (f : ℝ → ℝ) : Prop := True

/-- Placeholder predicate for L1 integrability (finite integral of |f|) used only for the translation. -/
def L1 (f : ℝ → ℝ) : Prop := True

open Function Set

/-- Let f : ℝ → ℝ be a Riemann integrable function with finite integral (L1). 
    Let g : ℝ → ℝ be continuous and equal to zero outside of the interval [a,b]. 
    Show that the convolution (g * f)(x) := ∫_{-∞}^∞ f(t) g(x-t) dt is well-defined for all x ∈ ℝ. -/
theorem convolution_well_defined
  {a b : ℝ} (f g : ℝ → ℝ)
  (hf : RiemannIntegrable f)
  (hf_l1 : L1 f)
  (hg_cont : Continuous g)
  (hg_zero : ∀ t, t < a ∨ t > b → g t = 0)
  (x : ℝ) :
  RiemannIntegrable (fun t => f t * g (x - t)) := by
  sorry

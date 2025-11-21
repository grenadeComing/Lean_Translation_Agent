import Mathlib

open Set Filter

variable {n : ℕ}

def E := Fin n → ℝ

/--
If F : E → E has a (Fréchet) derivative fderiv ℝ F x at each x ∈ U and the map x ↦ fderiv ℝ F x
is continuous on a convex set U, then the remainder
‖F(x+h) - F(x) - fderiv ℝ F x h‖ = o(‖h‖) uniformly on compact subsets of U as h → 0.

The statement is given here in a form using the supremum over a compact K ⊆ U: the function
h ↦ sup_{x ∈ K} ‖F(x+h)-F(x)-fderiv ℝ F x h‖ / ‖h‖ tends to 0 as h → 0.
-/
theorem fderiv_continuous_on_convex_uniform_o {F : E → E} {U : Set E}
  (hU : Convex ℝ U)
  (hcont : ContinuousOn (fun x => fderiv ℝ F x) U)
  (hDiff : ∀ x ∈ U, HasFDerivAt F (fderiv ℝ F x) x) :
  ∀ K : Set E, IsCompact K → K ⊆ U →
    Tendsto (fun (h : E) =>
      if h = 0 then (0 : ℝ) else
        Sup (Set.image K fun x => ‖F (x + h) - F x - fderiv ℝ F x h‖ / ‖h‖))
    (nhds (0 : E)) (nhds (0 : ℝ)) := by sorry

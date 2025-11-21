import Mathlib

/-- The unit interval as a subtype of ℝ. -/
def unit_interval := { t : ℝ // 0 ≤ t ∧ t ≤ 1 }

variable {X : Type*} [TopologicalSpace X]

/-- Let X be a topological space and x,y : I → X be paths. Suppose there exists a continuous,
strictly increasing map τ : I → I with τ(0)=0, τ(1)=1 and y ∘ τ = x (so y is a reparametrization of x).
Then x is homotopic to y relative to {0,1}. This statement asserts the existence of a continuous
homotopy H : I × I → X satisfying the usual endpoint and relative endpoint conditions. -/
theorem reparametrization_homotopic_rel_endpoints
  {x y : unit_interval → X} {τ : unit_interval → unit_interval}
  (hτ_cont : Continuous τ)
  (hτ_strict : StrictMono τ)
  (hτ0 : τ ⟨0, by norm_num⟩ = ⟨0, by norm_num⟩)
  (hτ1 : τ ⟨1, by norm_num⟩ = ⟨1, by norm_num⟩)
  (hxy : y ∘ τ = x) :
  ∃ (H : unit_interval × unit_interval → X),
    Continuous H ∧
    (∀ s, H (s, ⟨0, by norm_num⟩) = x s) ∧                           -- H(s,0) = x(s)
    (∀ s, H (s, ⟨1, by norm_num⟩) = y s) ∧                           -- H(s,1) = y(s)
    (∀ t, H (⟨0, by norm_num⟩, t) = x ⟨0, by norm_num⟩) ∧           -- H(0,t) = x(0) (fixed)
    (∀ t, H (⟨1, by norm_num⟩, t) = x ⟨1, by norm_num⟩) := by sorry
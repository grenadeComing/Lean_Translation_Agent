import Mathlib

/-- Prove that if $T \in \mathcal{L}(V)$ is normal, then \operatorname{range} T=\operatorname{range} T^{*}. -/
theorem range_eq_range_adjoint_of_normal {V : Type*} [SeminormedAddCommGroup V] [InnerProductSpace ℂ V]
  [FiniteDimensional ℂ V] (T : V →ₗ[ℂ] V) (hT : IsNormal (T : V →ₗ[ℂ] V)) :
  LinearMap.range T = LinearMap.range T.adjoint := by
  sorry

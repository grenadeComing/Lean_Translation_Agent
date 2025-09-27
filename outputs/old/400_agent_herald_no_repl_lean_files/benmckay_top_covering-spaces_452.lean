import Mathlib
open Bundle

/-- If \(X\) and \(Y\) are path connected Hausdorff topological spaces and \(f \colon X \to Y\) is a covering map with \(y_0=f(x_0)\), then the map $\pi_1(Y,y_0)/f_* \pi_1(X,x_0) \mapsto X_{y_0}$ is bijective. -/
theorem bijection_map_covering_fundamental_group (X Y : Type*) [TopologicalSpace X] [TopologicalSpace Y]
    [PathConnectedSpace X] [PathConnectedSpace Y] [T2Space X] [T2Space Y] (f : X → Y)
    (hf : IsCoveringMap f) (x₀ : X) (y₀ : Y) (h : y₀ = f x₀) :
    Function.Bijective (IsCoveringMap.lifting_map_equiv hf x₀ y₀ h) := by sorry

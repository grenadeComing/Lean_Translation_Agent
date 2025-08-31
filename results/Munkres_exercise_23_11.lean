import Mathlib
open Set Function Topology TopologicalSpace Relation
open Set.Notation in
open Set.Notation in

/-- Let $p: X \rightarrow Y$ be a quotient map. Show that if each set $p^{-1}(\{y\})$ is connected, and if $Y$ is connected, then $X$ is connected. -/
theorem connectedSpace_tac_33718 [TopologicalSpace X] [TopologicalSpace Y] (p : X → Y) (hp : QuotientMap p) (h : ∀ (y : Y), IsConnected (p ⁻¹' {y})) (H : ConnectedSpace Y) : ConnectedSpace X := sorry

import Mathlib
open Set Topology

/-- If $X$ is regular, then for all $x \neq y$ in $X$, there are open neighborhoods with disjoint closures. -/
theorem regular_disjoint_closure_neighborhoods {X : Type*} [TopologicalSpace X] [RegularSpace X] :
  ∀ (x y : X), x ≠ y → ∃ (U V : Set X), IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ Disjoint (closure U) (closure V) :=
λ x y hxy,
let F := {y} in
have closed_F : IsClosed F := isClosed_singleton,
have x_notin_F : x ∉ F := by simpa,
let U := (classical.choose (RegularSpace.reg x F closed_F x_notin_F)) in
let openU := (classical.choose_spec (RegularSpace.reg x F closed_F x_notin_F)).1 in
let xU := (classical.choose_spec (RegularSpace.reg x F closed_F x_notin_F)).2.1 in
let U_cl := (classical.choose_spec (RegularSpace.reg x F closed_F x_notin_F)).2.2 in
let E := {x} in
have closed_E : IsClosed E := isClosed_singleton,
have y_notin_E : y ∉ E := by simpa,
let V := (classical.choose (RegularSpace.reg y E closed_E y_notin_E)) in
let openV := (classical.choose_spec (RegularSpace.reg y E closed_E y_notin_E)).1 in
let yV := (classical.choose_spec (RegularSpace.reg y E closed_E y_notin_E)).2.1 in
let V_cl := (classical.choose_spec (RegularSpace.reg y E closed_E y_notin_E)).2.2 in
⟨U, V, openU, openV, xU, yV, 
  fun z hz =>
    by_contra h, 
    rcases h with ⟨h1, h2⟩,
    -- have z ∈ closure U ∩ closure V, so z ≠ x and z ≠ y
    by_cases z_eq_x : z = x;
      simp [z_eq_x] at h2; exact V_cl h2,
    by_cases z_eq_y : z = y;
      simp [z_eq_y] at h1; exact U_cl h1,
    -- Otherwise, z ≠ x, z ≠ y, so z ∉ {x} ∪ {y}, contradiction since closures are in the complements
    exact or.elim (not_or_intro z_eq_x z_eq_y) (λ _, absurd _ id) (λ _, absurd _ id)
⟩

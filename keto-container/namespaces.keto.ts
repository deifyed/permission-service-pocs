import { Namespace, SubjectSet, Context } from "@ory/keto-namespace-types"

/*
 * Subjects
 */
export class Organization implements Namespace {
  related: {
    admins: User[]
    members: User[]
  }

  permits = {
    isMember: (ctx: Context): boolean => [...this.related.admins, ...this.related.members].includes(ctx.subject)
  }
}

export class User implements Namespace {
  related: {}
}

/*
 * Objects
 */
export class Schema implements Namespace {
  related: {
    owners: Organization[],
    viewers: User[],
    editors: User[],
    publishers: User[],
  }

  permits = {
    view: (ctx: Context): boolean =>
      this.related.viewers.includes(ctx.subject) ||
      this.related.owners.traverse((o) => o.permits.isMember(ctx.subject)),
    edit: (ctx: Context): boolean =>
      this.related.editors.includes(ctx.subject) ||
      this.related.owners.traverse((o) => o.related.admins.includes(ctx.subject)),
    publish: (ctx: Context): boolean =>
      this.related.publishers.includes(ctx.subject) ||
      this.related.owners.traverse((o) => o.related.admins.includes(ctx.subject)),
  }
}


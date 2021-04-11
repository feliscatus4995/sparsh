import { Entity, JoinColumn, ManyToMany, PrimaryColumn } from 'typeorm';
import { AbstractEntity } from './abstract.entity';
import { User } from './user.entity';
import { Channel } from './channel.entity';

@Entity('pcmembers')
export class PCMember extends AbstractEntity {
  @PrimaryColumn()
  userId: string;

  @PrimaryColumn()
  channelId: string;

  @ManyToMany(() => User,
  (user) => user.channels,
  { primary: true, onDelete: 'CASCADE' }
  )
  @JoinColumn({ name: 'userId' })
  user: User;

  @ManyToMany(
    () => Channel,
    (channel) => channel.members,
    { primary: true, onDelete: 'CASCADE' }
  )
  @JoinColumn({ name: 'channelId' })
  channel: Channel;
}
